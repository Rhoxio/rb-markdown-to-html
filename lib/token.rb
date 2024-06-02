class InvalidTokenError < StandardError; end

class NullToken
  attr_reader :type, :value

  def initialize
    @type = nil
    @value = nil
  end

  def length
    0
  end

  def null?
    true
  end

  def present?
    false
  end
end

class Token
  attr_reader :type, :value

  def initialize(type:, value:)
    @type = type || nil
    @value = value || nil
    raise InvalidTokenError if value.nil? || type.nil?
  end

  def self.end_of_file
    Token.new(type: 'EOF', value: '')
  end

  def length
    value.length
  end

  def null?
    false
  end

  def present?
    true
  end

  def to_s
    "<type: #{type}, value: #{value}>"
  end


end