require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save
  end

  test 'should save article with correct title' do
    article = Article.new title: 'Ruby is awesome'
    assert article.save
  end
end