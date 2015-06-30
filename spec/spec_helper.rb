$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'licensor'

class String
  def undent
    gsub /^.{#{slice(/^ +/).length}}/, ''
  end
end
