describe "UIView (snake_case)" do

  before { @view = UIView.new }
  after { @view = nil }

  describe ".<<" do
    it "adds a subview" do
      @view.mock!(:addSubview)
      @view << UIView.new
    end
  end

  describe ".size_to_fit" do
    it "calls sizeToFit" do
      @view.mock!(:sizeToFit)
      @view.size_to_fit
    end
  end

  describe ".redisplay" do
    it "calls setNeedsDisplay" do
      @view.mock!(:setNeedsDisplay)
      @view.redisplay
    end
  end

  describe ".set_needs_display" do
    it "calls setNeedsDisplay" do
      @view.mock!(:setNeedsDisplay)
      @view.set_needs_display
    end
  end

  describe ".background_color" do
    it "finds the backgroundColor" do
      @view.backgroundColor = UIColor.purpleColor
      @view.background_color.should == UIColor.purpleColor
    end
  end

  describe ".background_color=" do
    it "sets the backgroundColor" do
      @view.background_color = UIColor.blueColor
      @view.background_color.should == UIColor.blueColor
    end
  end

  describe "#create" do
    it "creates a view of the current class" do
      @view = UIView.create
      @view.class.should == UIView
    end

    it "allows configuration through a block" do
      frame = CGRectMake(10, 10, 10, 10)
      @view = UIView.create do |v|
        v.frame = frame
      end
      @view.frame.should == frame
    end
  end

  context "positioning and frames" do
    before { @view.frame = [[40, 50], [150, 100]] }

    describe ".top" do
      it "finds the minimum y coordinate on the view's frame" do
        @view.top.should == 50
      end
    end

    describe ".top=" do
      it "sets the y coordinate of the view's frame" do
        @view.top = 15
        @view.top.should == 15
      end
    end

    describe ".bottom" do
      it "finds the maximum y coordinate on the view's frame" do
        @view.bottom.should == 150
      end
    end

    describe ".bottom=" do
      it "sets the y coordinate of the view's frame to make the .bottom equal to the value passed along" do
        @view.bottom = 200
        @view.bottom.should == 200
      end
    end

    describe ".left" do
      it "finds the minimum x coordinate on the view's frame" do
        @view.left.should == 40
      end
    end

    describe ".left=" do
      it "sets the x coordinate of the view's frame" do
        @view.left = 15
        @view.left.should == 15
      end
    end

    describe ".right" do
      it "finds the maximum x coordinate on the view's frame" do
        @view.right.should == 190
      end
    end

    describe ".bottom=" do
      it "sets the x coordinate of the view's frame to make the .right equal to the value passed along" do
        @view.right = 290
        @view.right.should == 290
      end
    end

    describe ".width" do
      it "finds the frame's width" do
        @view.width.should == 150
      end
    end

    describe ".width=" do
      it "sets the frame's width" do
        @view.width = 300
        @view.width.should == 300
      end
    end

    describe ".height" do
      it "finds the frame's width" do
        @view.height.should == 100
      end
    end

    describe ".height=" do
      it "sets the frame's height" do
        @view.height = 400
        @view.height.should == 400
      end
    end

  end

  context "layer properties" do
    describe ".corner_radius" do
      it "finds the view's layer's corner radius" do
        @view.layer.cornerRadius = 5
        @view.corner_radius.should == 5
      end
    end

    describe ".corner_radius=" do
      it "sets the view's layer's corner radius" do
        @view.corner_radius = 15
        @view.corner_radius.should == 15
      end
    end

    describe ".border_radius" do
      it "finds the view's layer's corner radius" do
        @view.layer.cornerRadius = 10
        @view.border_radius.should == 10
      end
    end

    describe ".border_radius=" do
      it "sets the view's layer's corner radius" do
        @view.border_radius = 20
        @view.border_radius.should == 20
      end
    end

    describe ".border_color" do
      it "finds the view's layer's border color" do
        @view.layer.borderColor = UIColor.greenColor.CGColor
        @view.border_color.should == UIColor.greenColor.CGColor
      end
    end

    describe ".border_color=" do
      it "sets the view's layer's border color using a UIColor" do
        @view.border_color = UIColor.redColor
        @view.border_color.should == UIColor.redColor.CGColor
      end
    end

    describe ".border_width" do
      it "finds the view's layer's border width" do
        @view.layer.borderWidth = 10
        @view.border_width.should == 10
      end
    end

    describe ".border_width=" do
      it "sets the view's layer's border width" do
        @view.border_width = 20
        @view.border_width.should == 20
      end
    end
  end

end