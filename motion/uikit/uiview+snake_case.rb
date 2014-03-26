class UIView

  class << self
    def create
      view = new
      if block_given?
        yield view
      end
      view
    end
  end

  def <<(view)
    self.addSubview(view)
  end

  def top
    CGRectGetMinY(self.frame)
  end

  def top=(top)
    self.frame = [[self.left, top], [self.width, self.height]]
  end

  def bottom
    CGRectGetMaxY(self.frame)
  end

  def bottom=(bottom)
    self.frame = [[self.left, bottom - self.height], [self.width, self.height]]
  end

  def left
    CGRectGetMinX(self.frame)
  end

  def left=(left)
    self.frame = [[left, self.top], [self.width, self.height]]
  end

  def right
    CGRectGetMaxX(self.frame)
  end

  def right=(right)
    self.frame = [[right - self.width, self.top], [self.width, self.height]]
  end

  def width
    CGRectGetWidth(self.frame)
  end

  def width=(width)
    self.frame = [[self.left, self.top], [width, self.height]]
  end

  def height
    CGRectGetHeight(self.frame)
  end

  def height=(height)
    self.frame = [[self.left, self.top], [self.width, height]]
  end

  def size_to_fit
    self.sizeToFit
  end

  def redisplay
    self.setNeedsDisplay
  end

  def set_needs_display
    self.setNeedsDisplay
  end

  def corner_radius
    self.layer.cornerRadius
  end

  def corner_radius=(radius)
    self.layer.cornerRadius = radius
  end

  def border_radius
    self.layer.cornerRadius
  end

  def border_radius=(radius)
    self.layer.cornerRadius = radius
  end

  def border_color
    self.layer.borderColor
  end

  def border_color=(color)
    self.layer.borderColor = color.CGColor
  end

  def border_width
    self.layer.borderWidth
  end

  def border_width=(width)
    self.layer.borderWidth = width
  end

  def background_color
    self.backgroundColor
  end

  def background_color=(color)
    self.backgroundColor = color
  end
end