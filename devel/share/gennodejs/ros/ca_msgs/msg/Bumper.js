// Auto-generated. Do not edit!

// (in-package ca_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Bumper {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_left_pressed = null;
      this.is_right_pressed = null;
      this.is_light_left = null;
      this.is_light_front_left = null;
      this.is_light_center_left = null;
      this.is_light_center_right = null;
      this.is_light_front_right = null;
      this.is_light_right = null;
      this.light_signal_left = null;
      this.light_signal_front_left = null;
      this.light_signal_center_left = null;
      this.light_signal_center_right = null;
      this.light_signal_front_right = null;
      this.light_signal_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_left_pressed')) {
        this.is_left_pressed = initObj.is_left_pressed
      }
      else {
        this.is_left_pressed = false;
      }
      if (initObj.hasOwnProperty('is_right_pressed')) {
        this.is_right_pressed = initObj.is_right_pressed
      }
      else {
        this.is_right_pressed = false;
      }
      if (initObj.hasOwnProperty('is_light_left')) {
        this.is_light_left = initObj.is_light_left
      }
      else {
        this.is_light_left = false;
      }
      if (initObj.hasOwnProperty('is_light_front_left')) {
        this.is_light_front_left = initObj.is_light_front_left
      }
      else {
        this.is_light_front_left = false;
      }
      if (initObj.hasOwnProperty('is_light_center_left')) {
        this.is_light_center_left = initObj.is_light_center_left
      }
      else {
        this.is_light_center_left = false;
      }
      if (initObj.hasOwnProperty('is_light_center_right')) {
        this.is_light_center_right = initObj.is_light_center_right
      }
      else {
        this.is_light_center_right = false;
      }
      if (initObj.hasOwnProperty('is_light_front_right')) {
        this.is_light_front_right = initObj.is_light_front_right
      }
      else {
        this.is_light_front_right = false;
      }
      if (initObj.hasOwnProperty('is_light_right')) {
        this.is_light_right = initObj.is_light_right
      }
      else {
        this.is_light_right = false;
      }
      if (initObj.hasOwnProperty('light_signal_left')) {
        this.light_signal_left = initObj.light_signal_left
      }
      else {
        this.light_signal_left = 0;
      }
      if (initObj.hasOwnProperty('light_signal_front_left')) {
        this.light_signal_front_left = initObj.light_signal_front_left
      }
      else {
        this.light_signal_front_left = 0;
      }
      if (initObj.hasOwnProperty('light_signal_center_left')) {
        this.light_signal_center_left = initObj.light_signal_center_left
      }
      else {
        this.light_signal_center_left = 0;
      }
      if (initObj.hasOwnProperty('light_signal_center_right')) {
        this.light_signal_center_right = initObj.light_signal_center_right
      }
      else {
        this.light_signal_center_right = 0;
      }
      if (initObj.hasOwnProperty('light_signal_front_right')) {
        this.light_signal_front_right = initObj.light_signal_front_right
      }
      else {
        this.light_signal_front_right = 0;
      }
      if (initObj.hasOwnProperty('light_signal_right')) {
        this.light_signal_right = initObj.light_signal_right
      }
      else {
        this.light_signal_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bumper
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_left_pressed]
    bufferOffset = _serializer.bool(obj.is_left_pressed, buffer, bufferOffset);
    // Serialize message field [is_right_pressed]
    bufferOffset = _serializer.bool(obj.is_right_pressed, buffer, bufferOffset);
    // Serialize message field [is_light_left]
    bufferOffset = _serializer.bool(obj.is_light_left, buffer, bufferOffset);
    // Serialize message field [is_light_front_left]
    bufferOffset = _serializer.bool(obj.is_light_front_left, buffer, bufferOffset);
    // Serialize message field [is_light_center_left]
    bufferOffset = _serializer.bool(obj.is_light_center_left, buffer, bufferOffset);
    // Serialize message field [is_light_center_right]
    bufferOffset = _serializer.bool(obj.is_light_center_right, buffer, bufferOffset);
    // Serialize message field [is_light_front_right]
    bufferOffset = _serializer.bool(obj.is_light_front_right, buffer, bufferOffset);
    // Serialize message field [is_light_right]
    bufferOffset = _serializer.bool(obj.is_light_right, buffer, bufferOffset);
    // Serialize message field [light_signal_left]
    bufferOffset = _serializer.uint16(obj.light_signal_left, buffer, bufferOffset);
    // Serialize message field [light_signal_front_left]
    bufferOffset = _serializer.uint16(obj.light_signal_front_left, buffer, bufferOffset);
    // Serialize message field [light_signal_center_left]
    bufferOffset = _serializer.uint16(obj.light_signal_center_left, buffer, bufferOffset);
    // Serialize message field [light_signal_center_right]
    bufferOffset = _serializer.uint16(obj.light_signal_center_right, buffer, bufferOffset);
    // Serialize message field [light_signal_front_right]
    bufferOffset = _serializer.uint16(obj.light_signal_front_right, buffer, bufferOffset);
    // Serialize message field [light_signal_right]
    bufferOffset = _serializer.uint16(obj.light_signal_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bumper
    let len;
    let data = new Bumper(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_left_pressed]
    data.is_left_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_right_pressed]
    data.is_right_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_left]
    data.is_light_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_front_left]
    data.is_light_front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_center_left]
    data.is_light_center_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_center_right]
    data.is_light_center_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_front_right]
    data.is_light_front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_light_right]
    data.is_light_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [light_signal_left]
    data.light_signal_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [light_signal_front_left]
    data.light_signal_front_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [light_signal_center_left]
    data.light_signal_center_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [light_signal_center_right]
    data.light_signal_center_right = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [light_signal_front_right]
    data.light_signal_front_right = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [light_signal_right]
    data.light_signal_right = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ca_msgs/Bumper';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18fe5b1d31e6a8db180b924157ac665e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Contact sensors
    bool is_left_pressed
    bool is_right_pressed
    
    # Bumper light sensors (Create 2 only) in order from left to right
    # Value = true if an obstacle detected
    bool is_light_left
    bool is_light_front_left
    bool is_light_center_left
    bool is_light_center_right
    bool is_light_front_right
    bool is_light_right
    
    # Raw light sensor signals
    # Values in range [0, 4095]
    uint16 light_signal_left
    uint16 light_signal_front_left
    uint16 light_signal_center_left
    uint16 light_signal_center_right
    uint16 light_signal_front_right
    uint16 light_signal_right
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bumper(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_left_pressed !== undefined) {
      resolved.is_left_pressed = msg.is_left_pressed;
    }
    else {
      resolved.is_left_pressed = false
    }

    if (msg.is_right_pressed !== undefined) {
      resolved.is_right_pressed = msg.is_right_pressed;
    }
    else {
      resolved.is_right_pressed = false
    }

    if (msg.is_light_left !== undefined) {
      resolved.is_light_left = msg.is_light_left;
    }
    else {
      resolved.is_light_left = false
    }

    if (msg.is_light_front_left !== undefined) {
      resolved.is_light_front_left = msg.is_light_front_left;
    }
    else {
      resolved.is_light_front_left = false
    }

    if (msg.is_light_center_left !== undefined) {
      resolved.is_light_center_left = msg.is_light_center_left;
    }
    else {
      resolved.is_light_center_left = false
    }

    if (msg.is_light_center_right !== undefined) {
      resolved.is_light_center_right = msg.is_light_center_right;
    }
    else {
      resolved.is_light_center_right = false
    }

    if (msg.is_light_front_right !== undefined) {
      resolved.is_light_front_right = msg.is_light_front_right;
    }
    else {
      resolved.is_light_front_right = false
    }

    if (msg.is_light_right !== undefined) {
      resolved.is_light_right = msg.is_light_right;
    }
    else {
      resolved.is_light_right = false
    }

    if (msg.light_signal_left !== undefined) {
      resolved.light_signal_left = msg.light_signal_left;
    }
    else {
      resolved.light_signal_left = 0
    }

    if (msg.light_signal_front_left !== undefined) {
      resolved.light_signal_front_left = msg.light_signal_front_left;
    }
    else {
      resolved.light_signal_front_left = 0
    }

    if (msg.light_signal_center_left !== undefined) {
      resolved.light_signal_center_left = msg.light_signal_center_left;
    }
    else {
      resolved.light_signal_center_left = 0
    }

    if (msg.light_signal_center_right !== undefined) {
      resolved.light_signal_center_right = msg.light_signal_center_right;
    }
    else {
      resolved.light_signal_center_right = 0
    }

    if (msg.light_signal_front_right !== undefined) {
      resolved.light_signal_front_right = msg.light_signal_front_right;
    }
    else {
      resolved.light_signal_front_right = 0
    }

    if (msg.light_signal_right !== undefined) {
      resolved.light_signal_right = msg.light_signal_right;
    }
    else {
      resolved.light_signal_right = 0
    }

    return resolved;
    }
};

module.exports = Bumper;
