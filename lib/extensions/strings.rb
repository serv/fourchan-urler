class String
  def path_check
    parts = self.split('/')
    (parts.count == 5 || parts.count == 4) &&
      FourchanUrler.boards_list.include?(parts[1]) &&
      parts[2] == 'thread' &&
      !parts[3][/\D/]
  end
end
