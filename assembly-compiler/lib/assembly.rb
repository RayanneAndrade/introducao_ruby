class Assembly
  def compile(raw_instructions)
    @result = 0
    @instructions = raw_instructions.split("\n")
    @linha = @instructions.count
    one_strange_loop(0)
    @result
  end
  def one_strange_loop(starting_line)
    (starting_line...@linha).each do |line|
    commando, parametros = @instructions[line].split(' ')
    value = parametros[/-?\d+/].to_i
    @result = value if commando == 'mov'
    @result += value if commando == 'add'
    @result -= value if commando == 'sub'
    return one_strange_loop(value - 1) if commando == 'jmp'
  end
  end
end