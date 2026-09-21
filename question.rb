class Question
  def initialize(prompt, answer)
    raise ArgumentError, "Prompt cannot be empty" if prompt.to_s.strip.empty?
    @prompt = prompt
    @answer = answer
  end

  #def prompt
  #  @prompt
  #end

  #def answer
  #  @answer
  #end

  attr_reader :prompt, :answer

  #def answer=(new_answer)
  #  @answer = new_answer
  #end

  def ask
    puts prompt
    gets.chomp
  end

  def correct?(reply)
    reply.strip.downcase == answer.downcase
  end

  def to_s
    "#{prompt} (#{answer})"
  end
end
