std_msgs/Header header
uint32  status      # 0: normal, > 0: error
float64 time        # the synchronized local system time (local time + offset) in ms
float64 ax          # m/s/s
float64 ay          # m/s/s
float64 az          # m/s/s
float64 yaw_rate    # rad/s
float64 pitch_rate  # rad/s
float64 roll_rate   # rad/s
float64 temperature # Centigrade
