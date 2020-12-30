#include<ros/ros.h>
#include <sensor_msgs/Imu.h>
#include "sirius2std/IMU.h"


//方法一:
//TODO:方法一无法正常发布标准IMU消息
// void imuCallback(const sirius2std::IMU::ConstPtr& msg) //这里为什么需要const?
// {
//     ROS_INFO("status:%d  time:%f  ax:%f  ay:%f  az:%f  yaw_rate:%f  pitch_rate:%f  roll_rate:%f",msg->status,msg->time,msg->ax,msg->ay,msg->az,msg->yaw_rate,msg->pitch_rate,msg->roll_rate);
//     //把收到的IMU消息转换成标准ros消息打包发布出去
//     //创建节点句柄
//     ros::NodeHandle n;
//     //创建一个publisher,发布话题为'IMU_raw'的topic
//     ros::Publisher imu_pub = n.advertise<sensor_msgs::Imu>("/IMU_raw",20);
//     sensor_msgs::Imu msg2pub;
//     //msg2pub.header.stamp = ros::Time::now();
//     //四元数位姿
//     msg2pub.orientation.x=0;
//     msg2pub.orientation.y=0;
//     msg2pub.orientation.z=0;
//     msg2pub.orientation.w=0;
//     //角速度
//     msg2pub.angular_velocity.x=msg->pitch_rate;
//     msg2pub.angular_velocity.y=msg->roll_rate;
//     msg2pub.angular_velocity.z=msg->yaw_rate;
//     //线加速度
//     msg2pub.linear_acceleration.x=msg->ax;
//     msg2pub.linear_acceleration.y=msg->ay;
//     msg2pub.linear_acceleration.z=msg->az;
//     //发布消息
//     imu_pub.publish(msg2pub);
// }

// int main(int argc, char** argv)
// {
//     //初始化ROS节点
//     ros::init(argc, argv, "imu_sub_pub");
//     //创建节点句柄
//     ros::NodeHandle n;
//     //创建一个subscriber,订阅话题为'/sirius/sensor/ins/imu'的topic
//     ros::Subscriber imu_convert = n.subscribe("/sirius/sensor/ins/imu",20,imuCallback);
//     //循环等待回调函数
//     ros::spin();

//     return 0;
// }

//方法二:
class SubAndPub
{
    public:
    SubAndPub()
    {
        //需要发布的节点和话题
        imu_pub=n.advertise<sensor_msgs::Imu>("/IMU_raw",20);
        //订阅消息的节点和话题
        imu_sub=n.subscribe("/sirius/sensor/ins/imu",20,&SubAndPub::imuCallback,this);
    }

    //回调函数
    void imuCallback(const sirius2std::IMU::ConstPtr& msg)
    {
        sensor_msgs::Imu msg2pub;
        //序列号
        //msg2pub.header.seq = count;
        //时间戳
        msg2pub.header.stamp = ros::Time::now();
        //四元数位姿
        msg2pub.orientation.x=0;
        msg2pub.orientation.y=0;
        msg2pub.orientation.z=0;
        msg2pub.orientation.w=0;

        //角速度
        msg2pub.angular_velocity.x=msg->pitch_rate;
        msg2pub.angular_velocity.y=msg->roll_rate;
        msg2pub.angular_velocity.z=msg->yaw_rate;
        //angular covariance
        msg2pub.angular_velocity_covariance[0] = 0;
        msg2pub.angular_velocity_covariance[1] = 0;
        msg2pub.angular_velocity_covariance[2] = 0;
        msg2pub.angular_velocity_covariance[3] = 0;
        msg2pub.angular_velocity_covariance[4] = 0;
        msg2pub.angular_velocity_covariance[5] = 0;
        msg2pub.angular_velocity_covariance[6] = 0;
        msg2pub.angular_velocity_covariance[7] = 0;
        msg2pub.angular_velocity_covariance[8] = 0;

        //线加速度
        msg2pub.linear_acceleration.x=msg->ax;
        msg2pub.linear_acceleration.y=msg->ay;
        msg2pub.linear_acceleration.z=msg->az;
        //acceleration covariance
        msg2pub.linear_acceleration_covariance[0] = 0;
        msg2pub.linear_acceleration_covariance[1] = 0;
        msg2pub.linear_acceleration_covariance[2] = 0;
        msg2pub.linear_acceleration_covariance[3] = 0;
        msg2pub.linear_acceleration_covariance[4] = 0;
        msg2pub.linear_acceleration_covariance[5] = 0;
        msg2pub.linear_acceleration_covariance[6] = 0;
        msg2pub.linear_acceleration_covariance[7] = 0;
        msg2pub.linear_acceleration_covariance[8] = 0;
        
        //发布消息
        imu_pub.publish(msg2pub);
    } 

    private:
    ros::NodeHandle n;
    ros::Publisher imu_pub;
    ros::Subscriber imu_sub;
};

int main(int argc, char** argv)
{
    ros::init(argc,argv,"imu_sub_pub");
    SubAndPub sub_pub;
    ros::spin();

    return 0;
}
