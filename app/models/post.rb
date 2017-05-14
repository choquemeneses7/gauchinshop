class Post < ApplicationRecord

  FOTOS = File.join Rails.root,'public', 'photo_store'
  after_save :guardar_foto
  before_save :set_visits_count
  after_create :save_categories


  def categories=(value)
    @categories = value
  end

  def update_visits_count
    self.update(visits_count: self.visits_count + 1)
  end

  def photo_params

  end

  def photo=(file_data)
    unless file_data.blank?
    @file_data = file_data
      self.extension = file_data.original_filename.split('.').last.downcase
    end
  end

  def photo_filename
    #NOMBRE DE LA FOTO
    File.join FOTOS, "#{id}.#{extension}"
  end

  def photo_path
    "/photo_store/#{id}.#{extension}"
  end

  def has_photo?
    File.exist? photo_filename
  end
  private
  def guardar_foto
    if @file_data
      FileUtils.mkdir_p FOTOS
      File.open(photo_filename, 'wb') do |f|
        f.write(@file_data.read)
      end
      @file_data = nil
    end
  end

  def set_visits_count
    self.visits_count ||=0
  end

  def save_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id,post_id: self.id)
    end
  end
end
