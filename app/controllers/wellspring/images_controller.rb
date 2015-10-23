require_dependency "wellspring/application_controller"

module Wellspring
	class ImagesController < ApplicationController

		def index
			@images = Wellspring::Image.all
		end

		def new
			@image = Wellspring::Image.new
		end

		def create
			@image = Wellspring::Image.new(image_params)

			if @image.save
        redirect_to images_path, notice: 'Image was successfully uploaded.'
      else
        render :new
      end
		end

		def destroy
		end

		private

		def image_params
      params.require(:image).permit(:url)
    end

	end
end