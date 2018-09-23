#!/usr/bin/env python
from hello_protocol.srv import *
from subprocess import Popen  
import subprocess
import rospy

def handle_connect_request(req):
	print "Recieving [%s]"%(req.connection_request)
	proc.kill()
	return ConnectionResponse("Received " + req.connection_request)

def connecting_server():
	rospy.init_node('connecting_server')
	s = rospy.Service('ready_to_connect', Connection, handle_connect_request)
	global proc
	proc = subprocess.Popen(["rosrun", "hello_protocol", "talker.py"])
	print "Ready to respond"
	rospy.spin()
if __name__ == "__main__":
	connecting_server()

