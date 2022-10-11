Integration Tests
1) Ther are no suitable diary entries to read
diary = Diary.new
diary_entry_1 = DiaryEntry.new
diary.add(diary_entry_1)
result(diary.find_best_entry_for_reading_time(2, 3)).to eq "There are no possible entries for you to read."

diary = Diary.new
diary_entry_1 = DiaryEntry.new
diary_entry_2 = DiaryEntry.new
diary.add(diary_entry_1)
diary.add(diary_entry_2)
result(diary.find_best_entry_for_reading_time(2, 5)).to eq "The cat sat on the mat and ate a biscuit"