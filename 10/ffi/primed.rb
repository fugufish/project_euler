require 'rubygems'
require 'ffi'
module Primed
  extend FFI::Library
  ffi_lib "./primed.so"
  attach_function :prime, [:int], :int
  
  def prime?
    return false if prime(self) == 0
    true
  end
  
end