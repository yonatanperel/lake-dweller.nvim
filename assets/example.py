# Models and services for user management
from dataclasses import dataclass
from typing import Optional

@dataclass
class User:
    name: str
    email: str
    age: int
    active: bool = True

class UserService:
    def __init__(self, db_url: str):
        self.db_url = db_url
        self.cache: dict[str, User] = {}

    def get_user(self, user_id: str) -> Optional[User]:
        if user_id in self.cache:
            return self.cache[user_id]
        return None

    def create_user(self, name: str, email: str, age: int) -> User:
        user = User(name=name, email=email, age=age)
        self.cache[email] = user
        return user

# Filter active adult users and return name-age pairs
def process_users(users: list[User]) -> dict[str, int]:
    results = {}
    for user in users:
        if user.active and user.age >= 18:
            results[user.name] = user.age
    return results
