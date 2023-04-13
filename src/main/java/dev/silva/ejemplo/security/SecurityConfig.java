package dev.silva.ejemplo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws  Exception{
        http
                .authorizeHttpRequests()
                .and()
                .authorizeHttpRequests()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .and()
                .logout( logout -> logout.logoutSuccessUrl("/"));
        return http.build();


    }

    @Bean
    public InMemoryUserDetailsManager userDetailsService(){
        UserDetails user = User.withDefaultPasswordEncoder()
                .username("test")
                .password("test")
                .roles("USER")
                .build();
        return new InMemoryUserDetailsManager(user);
    }
}
