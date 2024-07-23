package net.javajudd.rp1music.repository;

import net.javajudd.rp1music.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

     User findByEmail(String email);

}
