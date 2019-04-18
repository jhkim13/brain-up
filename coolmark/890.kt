class Solution {
    fun findAndReplacePattern(words: Array<String>, pattern: String): List<String> {
        var result = mutableListOf<String>()

        if (words.count() == 0) { return result.toList() }
        if (pattern == "") { return result.toList() }

        for (word in words) {
            if (word.count() != pattern.count()) { continue }

            val map: HashMap<Char, Char> = HashMap<Char, Char>()
            var success = true

            pattern.forEachIndexed looper@{ i, char ->
                val charFromHash = map[char]

                if (charFromHash == null) {
                    if (map.containsValue(word[i])) {
                        success = false
                        return@looper
                    }
                    map.put(char, word[i])
                } else if (charFromHash != word[i]) {
                    success = false
                    return@looper
                }
            }

            if (success) {
                result.add(word)
            }
        }

        return result.toList()
    }
}
