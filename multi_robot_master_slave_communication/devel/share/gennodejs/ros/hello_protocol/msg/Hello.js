// Auto-generated. Do not edit!

// (in-package hello_protocol.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Hello {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Hello_from_Robot1 = null;
    }
    else {
      if (initObj.hasOwnProperty('Hello_from_Robot1')) {
        this.Hello_from_Robot1 = initObj.Hello_from_Robot1
      }
      else {
        this.Hello_from_Robot1 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hello
    // Serialize message field [Hello_from_Robot1]
    bufferOffset = _serializer.string(obj.Hello_from_Robot1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hello
    let len;
    let data = new Hello(null);
    // Deserialize message field [Hello_from_Robot1]
    data.Hello_from_Robot1 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Hello_from_Robot1.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_protocol/Hello';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8916ac80101a481b96c0cfdc1217c9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Hello_from_Robot1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hello(null);
    if (msg.Hello_from_Robot1 !== undefined) {
      resolved.Hello_from_Robot1 = msg.Hello_from_Robot1;
    }
    else {
      resolved.Hello_from_Robot1 = ''
    }

    return resolved;
    }
};

module.exports = Hello;
