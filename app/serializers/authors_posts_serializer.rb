class AuthorsPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

# short_content=self.object.content[0..40]

  def short_content
  "#{self.object.content[0..39]}..."
  end
end
