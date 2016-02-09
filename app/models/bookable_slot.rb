class BookableSlot
  attr_accessor :start_at, :stop_at, :slot

  def free?
    return true unless student
  end

  def taken?
    !free?
  end

  def student
    if lesson
      return lesson.student
    end
  end

  def lesson
    Lesson.where(slot: slot, start_at: start_at).first
  end
end
