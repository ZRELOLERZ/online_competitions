require 'digest'
def crack(s)
  md5 = Digest::MD5.new
  md5 << s

  (0..99999).each{|i|
    t = i.to_s.rjust(5,'0')
    md5 << t
    return t if md5.hexdigest == s
    md5.reset
  }
end