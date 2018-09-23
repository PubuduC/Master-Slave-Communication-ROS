#!/usr/bin/env python

import sys
import rospy
from hello_protocol.srv import *

def ready_to_connect_client():
	rospy.wait_for_service('ready_to_connect')
	try:
		connection = rospy.ServiceProxy('ready_to_connect', Connection)
		resp1 = connection('Slave_1')
		print resp1
		return resp1.connection_response
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

#def usage():
#	return "%s x"%sys.argv[1]

if __name__ == "__main__":
	ready_to_connect_client()
