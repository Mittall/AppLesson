module Paperclip
  	class Ffmpeg < Processor
    	attr_accessor :geometry, :format, :convert_options
      
      @geometry        = options[:geometry]
      @file            = file
      @keep_aspect     = !@geometry.nil? && @geometry[-1,1] != '!'
      @format          = options[:format]
      @current_format  = File.extname(@file.path)
      @basename        = File.basename(@file.path, @current_format)
		end

    def make  
      src = @file
      dst = Tempfile.new([@basename, @format ? ".#{@format}" : ''])
      dst.binmode
      begin
        av_lib_version = Ffmpeg.detect_ffmpeg_or_avconv
        success = Paperclip.run(av_lib_version, parameters, :source => "#{File.expand_path(src.path)}", :dest => File.expand_path(dst.path))
      rescue Cocaine::ExitStatusError => e
        raise Paperclip::Error, "error while processing video for #{@basename}: #{e}" if @whiny
      end
      dst
    end
end
