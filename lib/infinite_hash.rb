class InfiniteHash < Hash

  def initialize
    super
    self.default_proc = proc { |h, k| h[k] = self.class.new }
  end

end
