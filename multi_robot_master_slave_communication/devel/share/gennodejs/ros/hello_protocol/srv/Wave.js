// Auto-generated. Do not edit!

// (in-package hello_protocol.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waving = null;
    }
    else {
      if (initObj.hasOwnProperty('waving')) {
        this.waving = initObj.waving
      }
      else {
        this.waving = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaveRequest
    // Serialize message field [waving]
    bufferOffset = _serializer.string(obj.waving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaveRequest
    let len;
    let data = new WaveRequest(null);
    // Deserialize message field [waving]
    data.waving = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.waving.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_protocol/WaveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff1992fd083b44bcff1cb0b20f6b4135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string waving
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaveRequest(null);
    if (msg.waving !== undefined) {
      resolved.waving = msg.waving;
    }
    else {
      resolved.waving = ''
    }

    return resolved;
    }
};

class WaveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waving_back = null;
    }
    else {
      if (initObj.hasOwnProperty('waving_back')) {
        this.waving_back = initObj.waving_back
      }
      else {
        this.waving_back = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaveResponse
    // Serialize message field [waving_back]
    bufferOffset = _serializer.string(obj.waving_back, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaveResponse
    let len;
    let data = new WaveResponse(null);
    // Deserialize message field [waving_back]
    data.waving_back = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.waving_back.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_protocol/WaveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '496fdf2ef26895dfa8463e939f855199';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string waving_back
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaveResponse(null);
    if (msg.waving_back !== undefined) {
      resolved.waving_back = msg.waving_back;
    }
    else {
      resolved.waving_back = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: WaveRequest,
  Response: WaveResponse,
  md5sum() { return 'e4fbbf8de027480172f47df2390f2c22'; },
  datatype() { return 'hello_protocol/Wave'; }
};
