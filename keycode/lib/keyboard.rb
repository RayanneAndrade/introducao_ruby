class Keyboard
  def keycode(instructions, keypad)
    @b = @a = 1
    @vertical = keypad.count
    @horizontal = keypad.first.count

    instructions.split.map do |keypresses|
      navigate!(keypresses)
      keypad[@a][@b]
    end.join
  end

  def navigate!(keypresses)
    keypresses.split('').each do |keypress|
      @a -= 1 if keypress == 'C' && (@a - 1) >= 0
      @b -= 1 if keypress == 'E' && (@b - 1) >= 0
      @a += 1 if keypress == 'B' && (@a + 1) < @vertical
      @b += 1 if keypress == 'D' && (@b + 1) < @horizontal
    end
  end
end