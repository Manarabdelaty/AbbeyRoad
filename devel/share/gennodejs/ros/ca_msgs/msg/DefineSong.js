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

class DefineSong {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.song = null;
      this.length = null;
      this.notes = null;
      this.durations = null;
    }
    else {
      if (initObj.hasOwnProperty('song')) {
        this.song = initObj.song
      }
      else {
        this.song = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('notes')) {
        this.notes = initObj.notes
      }
      else {
        this.notes = [];
      }
      if (initObj.hasOwnProperty('durations')) {
        this.durations = initObj.durations
      }
      else {
        this.durations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DefineSong
    // Serialize message field [song]
    bufferOffset = _serializer.uint8(obj.song, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [notes]
    bufferOffset = _arraySerializer.uint8(obj.notes, buffer, bufferOffset, null);
    // Serialize message field [durations]
    bufferOffset = _arraySerializer.float32(obj.durations, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DefineSong
    let len;
    let data = new DefineSong(null);
    // Deserialize message field [song]
    data.song = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [notes]
    data.notes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [durations]
    data.durations = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.notes.length;
    length += 4 * object.durations.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ca_msgs/DefineSong';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae0ef1f2fad74bf546a9e5f037c27a5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 song            # song number [0-3]
    uint8 length          # song length [1-16]
    uint8[] notes         # notes defined by the MIDI note numbering scheme. Notes outside the range of [31-127] are rest notes.
    float32[] durations   # durations in seconds. Maximum duration is 255/64.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DefineSong(null);
    if (msg.song !== undefined) {
      resolved.song = msg.song;
    }
    else {
      resolved.song = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.notes !== undefined) {
      resolved.notes = msg.notes;
    }
    else {
      resolved.notes = []
    }

    if (msg.durations !== undefined) {
      resolved.durations = msg.durations;
    }
    else {
      resolved.durations = []
    }

    return resolved;
    }
};

module.exports = DefineSong;
