module ApplicationHelper
  def topics_performance
    html = ''
    unless @user_performance.blank?
      @user_performance.each_with_index do |result, index|
        html = "#{result.performance}".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def topics_title
    html = ''
    unless @user_performance.blank?
      @user_performance.each_with_index do |user_performance, index|
        html = "'#{user_performance.topic.title.camelize.pluralize}'".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def compare_your_performance
    html = ''
    unless @your_performance.blank?
      @your_performance.each_with_index do |result, index|
        html = "#{result}".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def compare_others_performance
    html = ''
    unless @others_performance.blank?
      @others_performance.each_with_index do |result, index|
        html = "#{result}".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def compare_topics_title
    html = ''
    unless @compare_topics.blank?
      @compare_topics.each_with_index do |compare_topics, index|
        html = "'#{compare_topics.camelize.pluralize}'".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def compare_no_performance
    html = ''
    unless @all_performances.blank?
      @all_performances.each_with_index do |result, index|
        html = "#{result}".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

  def compare_no_topics_title
    html = ''
    unless @all_topics.blank?
      @all_topics.each_with_index do |compare_topics, index|
        html = "'#{compare_topics.camelize.pluralize}'".to_s + ','.to_s + html.to_s
      end
    end
    return html
  end

end
