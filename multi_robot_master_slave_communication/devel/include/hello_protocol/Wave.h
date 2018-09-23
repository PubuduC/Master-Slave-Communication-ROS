// Generated by gencpp from file hello_protocol/Wave.msg
// DO NOT EDIT!


#ifndef HELLO_PROTOCOL_MESSAGE_WAVE_H
#define HELLO_PROTOCOL_MESSAGE_WAVE_H

#include <ros/service_traits.h>


#include <hello_protocol/WaveRequest.h>
#include <hello_protocol/WaveResponse.h>


namespace hello_protocol
{

struct Wave
{

typedef WaveRequest Request;
typedef WaveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Wave
} // namespace hello_protocol


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hello_protocol::Wave > {
  static const char* value()
  {
    return "e4fbbf8de027480172f47df2390f2c22";
  }

  static const char* value(const ::hello_protocol::Wave&) { return value(); }
};

template<>
struct DataType< ::hello_protocol::Wave > {
  static const char* value()
  {
    return "hello_protocol/Wave";
  }

  static const char* value(const ::hello_protocol::Wave&) { return value(); }
};


// service_traits::MD5Sum< ::hello_protocol::WaveRequest> should match 
// service_traits::MD5Sum< ::hello_protocol::Wave > 
template<>
struct MD5Sum< ::hello_protocol::WaveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hello_protocol::Wave >::value();
  }
  static const char* value(const ::hello_protocol::WaveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_protocol::WaveRequest> should match 
// service_traits::DataType< ::hello_protocol::Wave > 
template<>
struct DataType< ::hello_protocol::WaveRequest>
{
  static const char* value()
  {
    return DataType< ::hello_protocol::Wave >::value();
  }
  static const char* value(const ::hello_protocol::WaveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hello_protocol::WaveResponse> should match 
// service_traits::MD5Sum< ::hello_protocol::Wave > 
template<>
struct MD5Sum< ::hello_protocol::WaveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hello_protocol::Wave >::value();
  }
  static const char* value(const ::hello_protocol::WaveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_protocol::WaveResponse> should match 
// service_traits::DataType< ::hello_protocol::Wave > 
template<>
struct DataType< ::hello_protocol::WaveResponse>
{
  static const char* value()
  {
    return DataType< ::hello_protocol::Wave >::value();
  }
  static const char* value(const ::hello_protocol::WaveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HELLO_PROTOCOL_MESSAGE_WAVE_H
