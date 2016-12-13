module Samurai
  module ApplicationHelper
    FLASH_CLASSES = {
      notice: "alert alert-info",
      success: "alert alert-success",
      alert: "alert alert-danger",
      error: "alert alert-danger"
    }

    def flash_classes(level)
      FLASH_CLASSES[level.to_sym]
    end

    def active(path)
      current_page?(path) ? 'active' : ''
    end
  end
end
