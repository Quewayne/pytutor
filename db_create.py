from app import db
from app.models import User, AssignmentType, Course, CourseType, EntryClone, HashFile, Marking, Room, Semester

db.create_all()
