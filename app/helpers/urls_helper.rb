module UrlsHelper

	def clippy(text, options = {:bgcolor => '#FFFFFF', :show_text => "Copy URL"})

	  html = <<-EOF
	  	#{options[:show_text]}&nbsp;
	    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
	            width="110"
	            height="14"
	            id="clippy" >
	    <param name="movie" value="/flash/clippy.swf"/>
	    <param name="allowScriptAccess" value="always" />
	    <param name="quality" value="high" />
	    <param name="scale" value="noscale" />
	    <param NAME="FlashVars" value="text=#{text}">
	    <param name="bgcolor" value="#{options[:bgcolor]}">
	    <embed src="/flash/clippy.swf"
	           width="110"
	           height="14"
	           name="clippy"
	           quality="high"
	           allowScriptAccess="always"
	           type="application/x-shockwave-flash"
	           pluginspage="http://www.macromedia.com/go/getflashplayer"
	           FlashVars="text=#{text}"
	           bgcolor="#{options[:bgcolor]}"
	    />
	    </object>
	  EOF
	end

end