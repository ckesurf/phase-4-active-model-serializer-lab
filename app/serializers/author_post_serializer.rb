class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    # the first 40 characters of the post's content as short_content, with a trailing ellipsis (...) at the end
    self.object.content[0..39] + '...'
  end

end
