class PdfDocumentosController < ApplicationController
  def index
    @pdf_documento = PdfDocumento.all
  end

  def new

    @pdf_documento = PdfDocumento.new
  end

  def create

    @pdf_documento = PdfDocumento.new(pdf_documento_params)
    if @pdf_documento.save
      redirect_to pdf_documento_path, notice: 'Documento enviado com sucesso.'
    else
      render :new
    end
  end

  private

  def pdf_documento_params
    params.require(:pdf_document).permit(:title, :author, :creation_date, :file_path)
  end
end
