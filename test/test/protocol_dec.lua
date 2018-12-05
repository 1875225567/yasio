-- This file is generated by pcode_autog-1.18.12
-- Copyright(c) Lake.Deal, ALL RIGHTS RESERVED.
--
-- Purpose: contains all protocol message definiations and codec function
--          implementations
--
--
-- Implement all pure lua protocol decode functions.
require 'protocol_enums'

proto.d101 = function(ibs)
    local msg = proto.begin_decode(ibs);

    msg.id = ibs:read_i8(); 
    msg.value1 = ibs:read_u16(); 
    msg.value2 = ibs:read_i32(); 
    msg.value3 = ibs:read_bool(); 
    msg.value4 = ibs:read_f(); 
    msg.value6 = ibs:read_lf(); 
    msg.uname = ibs:read_string();
    msg.passwd = ibs:read_string();

    return msg;
end

proto.d1 = function(ibs)
    local msg = proto.begin_decode(ibs);

    msg.legacy_version = ibs:read_i16(); 
    msg.value1 = ibs:read_u16(); 
    msg.value2 = ibs:read_i32(); 
    msg.value3 = ibs:read_bool(); 
    msg.value4 = ibs:read_f(); 
    msg.value6 = ibs:read_lf(); 
    msg.uname = ibs:read_string();
    msg.passwd = ibs:read_string();

    return msg;
end


