module Findable
  def find_by_name(x, name)
    x.detect{|a| a.name == name}
  end
end
