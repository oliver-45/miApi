require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url, as: :json
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post articles_url, params: { article: { author: @article.author, content: @article.content, title: @article.title } }, as: :json
    end

    assert_response :created
  end

  test "should show article" do
    get article_url(@article), as: :json
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { author: @article.author, content: @article.content, title: @article.title } }, as: :json
    assert_response :success
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete article_url(@article), as: :json
    end

    assert_response :no_content
  end
end
