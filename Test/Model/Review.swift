/// Модель отзыва.
struct Review: Decodable {
    
    /// Имя пользователя
    let firstName: String
    /// Фамилия пользователя
    let lastName: String
    /// Рейтинг отзыва
    let rating: Int
    /// Текст отзыва.
    let text: String
    /// Время создания отзыва.
    let created: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case text, created, rating
    }

}
