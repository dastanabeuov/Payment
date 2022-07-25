# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice'
      'alert-success'
    when 'alert'
      'alert-warning'
    when 'error'
      'alert-danger'
    end
  end
end
