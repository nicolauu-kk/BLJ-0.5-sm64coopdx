function mario_update(m)

    if m.action == ACT_LONG_JUMP then

        if m.forwardVel < 0 then

            -- boost apenas quando toca o chão
            if m.pos.y <= m.floorHeight + 3 then
                m.forwardVel = m.forwardVel - 8
            end

            -- limite mais alto para permitir wall clip
            if m.forwardVel < -240 then
                m.forwardVel = -240
            end

            -- reduz o salto vertical sem colar totalmente
            if m.vel.y > 0 then
                m.vel.y = -1.5
            end

        end

    end

end

hook_event(HOOK_MARIO_UPDATE, mario_update)
