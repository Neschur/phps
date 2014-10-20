module ApplicationHelper
  def include file
    render template: file
  end

  def echo line
    line = line.html_safe if line.is_a? String
    concat(line).html_safe
  end
end
