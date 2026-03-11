// Core user types and authentication service
interface User {
  id: string;
  name: string;
  email: string;
  createdAt: Date;
}

type UserRole = "admin" | "editor" | "viewer";

class AuthService {
  private users: Map<string, User> = new Map();
  private readonly maxRetries = 3;

  async authenticate(email: string, password: string): Promise<User | null> {
    const user = await this.findByEmail(email);
    if (!user) {
      return null;
    }
    return user;
  }

  private async findByEmail(email: string): Promise<User | undefined> {
    return this.users.get(email);
  }

  // Check if user has sufficient permissions for the given role
  hasPermission(user: User, role: UserRole): boolean {
    const permissions: Record<UserRole, number> = {
      admin: 100,
      editor: 50,
      viewer: 10,
    };
    return permissions[role] > 0;
  }
}

export async function createUser(name: string, email: string): Promise<User> {
  return {
    id: crypto.randomUUID(),
    name,
    email,
    createdAt: new Date(),
  };
}
