class FlagNotification < Noticed::Base
  deliver_by :database

  param :flag

  def title
    'Action Required'
  end

  def message
    "Hey #{flag.project_submission.user.username}, \
    heads up your project submission for #{lesson.title} was flagged because it has a broken link. \
    We aim to keep the submission lists useful and so we remove any submissions with broken links often. \
    When you get a moment, can you update your submission with the correct links for us please? \
    Otherwise we will have to remove it on the date."
  end

  def reason
    params[:flag].reason
  end

  def flag
    params[:flag]
  end

  def lesson
    flag.project_submission.lesson
  end
end
