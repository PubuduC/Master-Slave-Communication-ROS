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

class ConnectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_request = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_request')) {
        this.connection_request = initObj.connection_request
      }
      else {
        this.connection_request = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionRequest
    // Serialize message field [connection_request]
    bufferOffset = _serializer.string(obj.connection_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionRequest
    let len;
    let data = new ConnectionRequest(null);
    // Deserialize message field [connection_request]
    data.connection_request = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.connection_request.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_protocol/ConnectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23a523dce2a662e8c61dfd509ff09690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string connection_request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionRequest(null);
    if (msg.connection_request !== undefined) {
      resolved.connection_request = msg.connection_request;
    }
    else {
      resolved.connection_request = ''
    }

    return resolved;
    }
};

class ConnectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_response = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_response')) {
        this.connection_response = initObj.connection_response
      }
      else {
        this.connection_response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionResponse
    // Serialize message field [connection_response]
    bufferOffset = _serializer.string(obj.connection_response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionResponse
    let len;
    let data = new ConnectionResponse(null);
    // Deserialize message field [connection_response]
    data.connection_response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.connection_response.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_protocol/ConnectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f40f78dc91c611e8de7bf165720cfb5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string connection_response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionResponse(null);
    if (msg.connection_response !== undefined) {
      resolved.connection_response = msg.connection_response;
    }
    else {
      resolved.connection_response = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ConnectionRequest,
  Response: ConnectionResponse,
  md5sum() { return '351d733a7219728e094fe3e87d955c3a'; },
  datatype() { return 'hello_protocol/Connection'; }
};
