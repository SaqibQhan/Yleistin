module ApplicationHelper
  def topics_performance
    html = ''
    unless @rand_topics.blank?
      @rand_topics.each_with_index do |topic, index|
       html = "['#{topic}', #{1}]".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end
end
