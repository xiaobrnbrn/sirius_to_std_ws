;; Auto-generated. Do not edit!


(when (boundp 'sirius2std::IMU)
  (if (not (find-package "SIRIUS2STD"))
    (make-package "SIRIUS2STD"))
  (shadow 'IMU (find-package "SIRIUS2STD")))
(unless (find-package "SIRIUS2STD::IMU")
  (make-package "SIRIUS2STD::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sirius2std::IMU
  :super ros::object
  :slots (_header _status _time _ax _ay _az _yaw_rate _pitch_rate _roll_rate _temperature ))

(defmethod sirius2std::IMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:time __time) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:pitch_rate __pitch_rate) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _time (float __time))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _yaw_rate (float __yaw_rate))
   (setq _pitch_rate (float __pitch_rate))
   (setq _roll_rate (float __roll_rate))
   (setq _temperature (float __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _status
    4
    ;; float64 _time
    8
    ;; float64 _ax
    8
    ;; float64 _ay
    8
    ;; float64 _az
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _pitch_rate
    8
    ;; float64 _roll_rate
    8
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _status
       (write-long _status s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az
       (sys::poke _az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az
     (setq _az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sirius2std::IMU :md5sum-) "3b5ae2af5aa10b2a3ae3a86603eba3d5")
(setf (get sirius2std::IMU :datatype-) "sirius2std/IMU")
(setf (get sirius2std::IMU :definition-)
      "std_msgs/Header header
uint32  status      # 0: normal, > 0: error
float64 time        # the synchronized local system time (local time + offset) in ms
float64 ax          # m/s/s
float64 ay          # m/s/s
float64 az          # m/s/s
float64 yaw_rate    # rad/s
float64 pitch_rate  # rad/s
float64 roll_rate   # rad/s
float64 temperature # Centigrade

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sirius2std/IMU "3b5ae2af5aa10b2a3ae3a86603eba3d5")


