#!/usr/bin/ruby
require "rubygems"
require "serialport"

sp = SerialPort.new("/dev/tty.usbserial", "9600".to_i)
sp.read_timeout = 100
sp.close
