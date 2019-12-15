// Auto-generated. Do not edit!

// (in-package ca_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlaySong {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.song = null;
    }
    else {
      if (initObj.hasOwnProperty('song')) {
        this.song = initObj.song
      }
      else {
        this.song = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaySong
    // Serialize message field [song]
    bufferOffset = _serializer.uint8(obj.song, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySong
    let len;
    let data = new PlaySong(null);
    // Deserialize message field [song]
    data.song = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ca_msgs/PlaySong';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb55a5c354f06b6572d1ec46a28b6e6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 song      # song number [0-3]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySong(null);
    if (msg.song !== undefined) {
      resolved.song = msg.song;
    }
    else {
      resolved.song = 0
    }

    return resolved;
    }
};

module.exports = PlaySong;
