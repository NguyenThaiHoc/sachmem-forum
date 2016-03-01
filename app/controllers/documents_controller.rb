class DocumentsController < ApplicationController
  before_action :load_document, only: [:show, :edit, :update, :destroy]
  def index
    @document = Document.new
    @documents = Document.all.to_a
    
  end

  def show
    
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new document_params

    if @document.save
      flash[:success] = t "documents.create_success"
      redirect_to documents_url
    else
      flash[:error] = t "documents.create_error"
      redirect_to :back
    end
  end

  def edit
  end

  def update
    if @document.update_attributes document_params
      flash[:success] = t "documents.update_success"
      redirect_to @document
    else
      flash[:error] = t "documents.update_error"
      render :edit
    end
  end

  def destroy
    if @document.destroy
      flash[:success] = t "documents.destroy_success"
    else
      flash[:error] = t "documents.destroy_error"
    end
    redirect_to documents_path
  end

  private
  def document_params
    params.require(:document).permit :name, :text, :link, :link_image, :link_video, :image, :video
  end

  def load_document
    @document = Document.find params[:id]
  end
end
