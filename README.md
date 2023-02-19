# README

----------------------------------------------------------------------------------

Приложение для: 
  1.учета подвижного состава транспортной фирмы
  2. составления графиков его обслуживания
  3. планирования ремонтных работ
  4. составление стастистики 
  5. учет времени механиков, использованных запчастей,   

Возможности:
1. Вносить данные о транспорте и обслуживании обслуживающим персоналом и
   руководящими должностями
2. Анализировать данные (руководство, экспедиция)
3. Собирать данные из сторонних источников(типа GPS-треккеров, заявки с сайта, почты
   и тд.)
4. Напоминать о существующих событиях либо о будущих(naprzyklad sgloszenie kierowcy)
----------------------------------------------------------------------------

Сущности:   VENIHLE ( truck, trailer, bus, tractor, car, forklift truck ) 
            USER    (prezes, mechanik, mechanik-glowny , forwarder, driver)
            SERVICE (какой_объект, работa, исполнитель, статус_выполнения,
                          запчати (номер_каталожный либо б\у)) 
            CHECK_LIST (список диагностик, отличаются для разных VENIHLE)
)
            REMINDER (напоминание о необходимых действиях.)?

-------------------------------  models ---------------------------------------------
Venihle:  type: (truck,trailer, bus, tractor,car, forklift truck), 
          make: (man, krone и тд), 
          year: 
          vin:,
          license_plate: (номера) ""
          badanie_techniczne:
          insurance_policy: ( пока это будет текст в формате "страховщик-номер_полиса-expire_data)
          tires:

User:     status: (prezes-A, glowny_mechanik-B, mechanik-C, forwarder-D, driver-E) 
          name:
          second_name: 
    

Service:  title:
          venihle:
          mechanik:
          status:  (не начат, в работе, закончен, пауза)
          repaire_parts:
          times:    ( добавления(как напоминание либо планирование), начало, окончание)
          notes:    

Repaire_part:  title:
                number_cat: 

Reminder:   venihle:
            author: 
            title:
            time:  created_at