// Generated by gencpp from file ca_msgs/Mode.msg
// DO NOT EDIT!


#ifndef CA_MSGS_MESSAGE_MODE_H
#define CA_MSGS_MESSAGE_MODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ca_msgs
{
template <class ContainerAllocator>
struct Mode_
{
  typedef Mode_<ContainerAllocator> Type;

  Mode_()
    : header()
    , mode(0)  {
    }
  Mode_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _mode_type;
  _mode_type mode;



  enum {
    MODE_OFF = 0u,
    MODE_PASSIVE = 1u,
    MODE_SAFE = 2u,
    MODE_FULL = 3u,
  };


  typedef boost::shared_ptr< ::ca_msgs::Mode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ca_msgs::Mode_<ContainerAllocator> const> ConstPtr;

}; // struct Mode_

typedef ::ca_msgs::Mode_<std::allocator<void> > Mode;

typedef boost::shared_ptr< ::ca_msgs::Mode > ModePtr;
typedef boost::shared_ptr< ::ca_msgs::Mode const> ModeConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ca_msgs::Mode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ca_msgs::Mode_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ca_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ca_msgs': ['/home/nvidia/catkin_ws_/src/create_autonomy/ca_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ca_msgs::Mode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ca_msgs::Mode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ca_msgs::Mode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ca_msgs::Mode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ca_msgs::Mode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ca_msgs::Mode_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ca_msgs::Mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4faf4b68b6555d4656417971bee31a0";
  }

  static const char* value(const ::ca_msgs::Mode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4faf4b68b6555d4ULL;
  static const uint64_t static_value2 = 0x656417971bee31a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ca_msgs::Mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca_msgs/Mode";
  }

  static const char* value(const ::ca_msgs::Mode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ca_msgs::Mode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 MODE_OFF=0\n\
uint8 MODE_PASSIVE=1\n\
uint8 MODE_SAFE=2\n\
uint8 MODE_FULL=3\n\
\n\
Header header\n\
uint8 mode\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::ca_msgs::Mode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ca_msgs::Mode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Mode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ca_msgs::Mode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ca_msgs::Mode_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CA_MSGS_MESSAGE_MODE_H
