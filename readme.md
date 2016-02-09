- validate lesson creation (can lesson actually be created on specific date)
- display error if two users wants to book a lesson
- consider caching on slow operations (whenever we use bookable_slot) and delete cache per teacher
- completely remove check_for_user_change section in application_controller
- controller based check if user (teacher of student) can delete a lesson
- add indexes to database (on all foreign keys, and start_at fields on lessons and slots)
- define rules who can delete lesson (teacher & probably user who booked the lesson as well ..)
- implement editing & deleting of the slots (what should be done if user has already booked a lesson insided the slot- convert bookable_slot to DB object if that would make our code slow. We can recalculate bookable_slots when slot is created or updated. It would simplyify procesing a lot but we would have more work for maintaining it

