class PdfDocumento < ApplicationRecord
  mount_uploader :file_path, PdfUploader

  before_save :extract_pdf_info

  private

  def extract_pdf_info
    if file_path.present? && file_path.file.exists?
      reader = PDF::Reader.new(file_path.file.path)
      self.file_size = File.size(file_path.file.path)
      self.num_pages = reader.pages.size
    end
  end
end
