class Piece < ActiveRecord::Base

  has_attached_file :image, url: '/assets/products/:id/:style/:basename.:extension',
                            path: ':rails_root/public/assets/products/:id/:style/:basename.:extension',
                            styles: {
                              thumb: '500x500>',
                              meduim: '600x600>'
                            }

  validates_attachment_presence :image
  # validates_attachment_size :image
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png']

end
