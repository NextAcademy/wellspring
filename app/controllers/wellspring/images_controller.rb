require_dependency "wellspring/application_controller"

module Wellspring
	class ImagesController < ApplicationController

		def index
			@images = Wellspring::Image.all.order("created_at DESC")
		end

		def new
			@image = Wellspring::Image.new
		end

		def create
      puts "============="
      puts "begin create"
      puts params
			@image = Wellspring::Image.new(image_params)

			if @image.save
        respond_to do |format|
          format.json { render json: @image.to_json }
          format.html { redirect_to images_path, notice: 'Image was successfully uploaded.' }
        end
      else
        render :new
      end
		end

		def destroy
      puts "============="
      puts "begin destroy"
      puts params
      @image = Image.find(params[:id])
      @image.destroy!

      redirect_to :back
		end

		private

		def image_params
      params.require(:image).permit(:url)
    end

	end
end