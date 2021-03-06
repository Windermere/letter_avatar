module LetterAvatar
  module Configuration
    def cache_base_path
      @cache_base_path
    end

    def cache_base_path=(v)
      @cache_base_path = v
    end

    def fill_color
      @fill_color || Avatar::FILL_COLOR
    end

    def fill_color=(v)
      @fill_color = v
    end

    def colors_palette
      @colors_palette ||= :google
    end

    def colors_palette=(v)
      @colors_palette = v if Colors::PALETTES.include?(v)
    end

    def weight
      @weight ||= 300
    end

    def weight=(v)
      @weight = v
    end

    def annotate_position
      @annotate_position ||= '-0+5'
    end

    def annotate_position=(v)
      @annotate_position = v
    end

    def mask
      @mask ||= false
    end

    def mask=(m)
      @mask = m
    end

    def font_size
      @font_size ||= 140
    end

    def font_size=(m)
      @font_size = m
    end
  end
end
