class UploadsController < ApplicationController

  def index
      @uploads = Upload.all
  end
   
  def new
    @upload = Upload.new
  end
   
  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      filename = "#{@upload.attachment.path}"
      Sell.readfile(filename)
      redirect_to uploads_path, notice: "O arquivo #{@upload.name} foi enviado."
    else
      render "new"
    end
      
  end
   
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_path, notice:  "O arquivo #{@upload.name} foi apagado."
  end
   
  private
  def upload_params
    params.require(:upload).permit(:name, :attachment)
  end
  
end