use std::collections::HashMap;

// This is what a comment looks like
#[derive(Debug, Clone)]
pub struct Config {
    pub name: String,
    pub max_connections: u32,
    pub enabled: bool,
}

impl Config {
    pub fn new(name: &str) -> Self {
        Self {
            name: name.to_string(),
            max_connections: 100,
            enabled: true,
        }
    }

    pub fn validate(&self) -> Result<(), ConfigError> {
        if self.name.is_empty() {
            return Err(ConfigError::InvalidName);
        }
        Ok(())
    }
}

enum ConfigError {
    InvalidName, // Name is not valid
    ConnectionFailed, // Connection Failed
}

fn process_items(items: Vec<Config>) -> HashMap<String, bool> {
    let mut results = HashMap::new();

    for item in items.iter() {
        let status = item.validate().is_ok();
        results.insert(item.name.clone(), status);
    }

    results
}
