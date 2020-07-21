module Findable
  def find_by_name(x, name)
    all.detect{|a| a.name == name}
  end
end
