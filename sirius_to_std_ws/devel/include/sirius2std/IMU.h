// Generated by gencpp from file sirius2std/IMU.msg
// DO NOT EDIT!


#ifndef SIRIUS2STD_MESSAGE_IMU_H
#define SIRIUS2STD_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace sirius2std
{
template <class ContainerAllocator>
struct IMU_
{
  typedef IMU_<ContainerAllocator> Type;

  IMU_()
    : header()
    , status(0)
    , time(0.0)
    , ax(0.0)
    , ay(0.0)
    , az(0.0)
    , yaw_rate(0.0)
    , pitch_rate(0.0)
    , roll_rate(0.0)
    , temperature(0.0)  {
    }
  IMU_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(0)
    , time(0.0)
    , ax(0.0)
    , ay(0.0)
    , az(0.0)
    , yaw_rate(0.0)
    , pitch_rate(0.0)
    , roll_rate(0.0)
    , temperature(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _status_type;
  _status_type status;

   typedef double _time_type;
  _time_type time;

   typedef double _ax_type;
  _ax_type ax;

   typedef double _ay_type;
  _ay_type ay;

   typedef double _az_type;
  _az_type az;

   typedef double _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef double _pitch_rate_type;
  _pitch_rate_type pitch_rate;

   typedef double _roll_rate_type;
  _roll_rate_type roll_rate;

   typedef double _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::sirius2std::IMU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sirius2std::IMU_<ContainerAllocator> const> ConstPtr;

}; // struct IMU_

typedef ::sirius2std::IMU_<std::allocator<void> > IMU;

typedef boost::shared_ptr< ::sirius2std::IMU > IMUPtr;
typedef boost::shared_ptr< ::sirius2std::IMU const> IMUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sirius2std::IMU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sirius2std::IMU_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sirius2std::IMU_<ContainerAllocator1> & lhs, const ::sirius2std::IMU_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.time == rhs.time &&
    lhs.ax == rhs.ax &&
    lhs.ay == rhs.ay &&
    lhs.az == rhs.az &&
    lhs.yaw_rate == rhs.yaw_rate &&
    lhs.pitch_rate == rhs.pitch_rate &&
    lhs.roll_rate == rhs.roll_rate &&
    lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sirius2std::IMU_<ContainerAllocator1> & lhs, const ::sirius2std::IMU_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sirius2std

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sirius2std::IMU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sirius2std::IMU_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sirius2std::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sirius2std::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sirius2std::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sirius2std::IMU_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sirius2std::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b5ae2af5aa10b2a3ae3a86603eba3d5";
  }

  static const char* value(const ::sirius2std::IMU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b5ae2af5aa10b2aULL;
  static const uint64_t static_value2 = 0x3ae3a86603eba3d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::sirius2std::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sirius2std/IMU";
  }

  static const char* value(const ::sirius2std::IMU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sirius2std::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint32  status      # 0: normal, > 0: error\n"
"float64 time        # the synchronized local system time (local time + offset) in ms\n"
"float64 ax          # m/s/s\n"
"float64 ay          # m/s/s\n"
"float64 az          # m/s/s\n"
"float64 yaw_rate    # rad/s\n"
"float64 pitch_rate  # rad/s\n"
"float64 roll_rate   # rad/s\n"
"float64 temperature # Centigrade\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::sirius2std::IMU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sirius2std::IMU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.time);
      stream.next(m.ax);
      stream.next(m.ay);
      stream.next(m.az);
      stream.next(m.yaw_rate);
      stream.next(m.pitch_rate);
      stream.next(m.roll_rate);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMU_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sirius2std::IMU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sirius2std::IMU_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.status);
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
    s << indent << "ax: ";
    Printer<double>::stream(s, indent + "  ", v.ax);
    s << indent << "ay: ";
    Printer<double>::stream(s, indent + "  ", v.ay);
    s << indent << "az: ";
    Printer<double>::stream(s, indent + "  ", v.az);
    s << indent << "yaw_rate: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "pitch_rate: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_rate);
    s << indent << "roll_rate: ";
    Printer<double>::stream(s, indent + "  ", v.roll_rate);
    s << indent << "temperature: ";
    Printer<double>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIRIUS2STD_MESSAGE_IMU_H
